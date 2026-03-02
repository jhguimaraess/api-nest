import { Role } from 'src/generated/enums';

export class CreateUserDto {
  name: string;
  email: string;
  password: string;
  role: Role;
}
