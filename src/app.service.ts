import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    const data = 'Select * from users'
    return data;
  }

  getData(): string {
    return 'Data';
  }
}

