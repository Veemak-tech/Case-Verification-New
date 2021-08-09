import { TestBed } from '@angular/core/testing';
import { ConvertCSVService } from './convert-csv.service';

describe('ConvertCSVService', () => {
  let service: ConvertCSVService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ConvertCSVService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
