import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

import 'cross-fetch/polyfill';
import gql from 'graphql-tag';
import ApolloClient from 'apollo-boost';

const client = new ApolloClient({
  uri: 'http://localhost:3001/graphql'  
});

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Get('accounts')
  async getAccounts(){
    try {
      const result = await client.query({
        query: gql`
          query getAccounts {
            accounts{
             name
             branch{
               name
             }
             transactions{
               amount
             }
           }
           }
        `,
      });
      return result.data;
    } catch (error) {
      console.log('error:',error);
    }
    return false;
  }
}
