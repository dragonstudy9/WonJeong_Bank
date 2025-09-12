-- TBL_ACCOUNT 테이블에 데이터 삽입

-- 1. 관리자(A) 계좌 추가 (CLIENT_NO: 1)
-- 은행 재산을 나타내는 계좌로, 초기 잔액을 100000000으로 설정
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-001',
    1,
    '은행자산관리계좌',
    100000000,
    'A',
    '예금',
    SYSDATE,
    SYSDATE
);

-- 2. 기업고객(C) 계좌 추가 (CLIENT_NO: 2)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-002',
    2,
    '대박기업 법인계좌',
    500000,
    'A',
    '예금',
    SYSDATE,
    SYSDATE
);

-- 3. 가계고객(P) 계좌 추가 (CLIENT_NO: 3)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-003',
    3,
    '홍길동 생활비계좌',
    150000,
    'A',
    '예금',
    SYSDATE,
    SYSDATE
);

-- 4. 신용불량기업(DC) 계좌 추가 (CLIENT_NO: 4)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-004',
    4,
    '부실기업 법인계좌',
    1000,
    'A',
    '예금',
    SYSDATE,
    SYSDATE
);

-- 5. 신용불량가계(DP) 계좌 추가 (CLIENT_NO: 5)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-005',
    5,
    '김철수 입출금계좌',
    5000,
    'A',
    '예금',
    SYSDATE,
    SYSDATE
);

-- 6. 추가 가계고객(P) 계좌 (CLIENT_NO: 6)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-006',
    6,
    '박영희 비상금계좌',
    75000,
    'A',
    '예금',
    SYSDATE,
    SYSDATE
);

-- 7. 추가 기업고객(C) 계좌 (CLIENT_NO: 7)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-007',
    7,
    '성공기업 법인계좌',
    2000000,
    'A',
    '예금',
    SYSDATE,
    SYSDATE
);

-- 8. 추가 신용불량가계(DP) 계좌 (CLIENT_NO: 8)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-008',
    8,
    '최민수 마이너스통장',
    -10000,
    'A',
    '예금',
    SYSDATE,
    SYSDATE
);

-- 9. 추가 신용불량기업(DC) 계좌 (CLIENT_NO: 9)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-009',
    9,
    '어려운기업 법인계좌',
    -50000,
    'A',
    '예금',
    SYSDATE,
    SYSDATE
);

-- 10. 추가 가계고객(P) 계좌 (CLIENT_NO: 10)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-010',
    10,
    '이지은 자율적금',
    350000,
    'A',
    '예금',
    SYSDATE,
    SYSDATE
);

-- TBL_ACCOUNT 테이블에 비활성 계좌 데이터 삽입

-- 1. 가계고객(P)의 비활성 예금 계좌 추가 (CLIENT_NO: 3)
-- 3년 이상 거래가 없어서 비활성화된 계좌를 가정
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20210101-001',
    3,
    '홍길동 휴면계좌',
    35000,
    'D',
    '예금',
    TO_DATE('2021-01-01', 'YYYY-MM-DD'),
    TO_DATE('2020-01-01', 'YYYY-MM-DD')
);

-- 2. 신용불량기업(DC)의 비활성 예금 계좌 추가 (CLIENT_NO: 9)
-- 3년 이상 거래가 없어서 비활성화된 계좌를 가정
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20210101-002',
    9,
    '어려운기업 휴면계좌',
    1500,
    'D',
    '예금',
    TO_DATE('2021-01-01', 'YYYY-MM-DD'),
    TO_DATE('2020-01-01', 'YYYY-MM-DD')
);

-- TBL_ACCOUNT 테이블에 대출 계좌 데이터 삽입

-- 1. 기업고객(C)의 대출 계좌 추가 (CLIENT_NO: 7)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-201',
    7,
    '성공기업 대출계좌',
    -5000000,
    'A',
    '대출',
    SYSDATE,
    SYSDATE
);

-- 2. 가계고객(P)의 대출 계좌 추가 (CLIENT_NO: 10)
INSERT INTO TBL_ACCOUNT (
    ACCOUNT_NO,
    CLIENT_NO,
    ACCOUNT_NAME,
    WEALTH,
    ACCOUNT_STATUS,
    ACCOUNT_KIND,
    LAST_TRANSACTION_DATE,
    CREATE_DATE
) VALUES (
    '20240912-202',
    10,
    '이지은 주택담보대출',
    -2000000,
    'A',
    '대출',
    SYSDATE,
    SYSDATE
);

-- TBL_TRANSACTION 테이블에 거래 내역 데이터 삽입

-- 1. 가계고객(P) '홍길동 생활비계좌' (ACCOUNT_NO: 20240912-003)에 100000원 입금
INSERT INTO TBL_TRANSACTION (
    TRANSACTION_ID,
    CLIENT_NO_SENDER,
    ACCOUNT_NO_SENDER,
    CLIENT_NO_RECEIVER,
    ACCOUNT_NO_RECEIVER,
    AMOUNT,
    TRANSACTION_DATE
) VALUES (
    'TR-20240912-001',
    1, -- 은행 재산을 나타내는 관리자(A)의 CLIENT_NO
    '20240912-001', -- 은행 계좌
    3, -- 홍길동의 CLIENT_NO
    '20240912-003', -- 홍길동의 계좌
    100000,
    SYSDATE
);

-- 2. 기업고객(C) '대박기업 법인계좌' (ACCOUNT_NO: 20240912-002)에서 50000원 출금
INSERT INTO TBL_TRANSACTION (
    TRANSACTION_ID,
    CLIENT_NO_SENDER,
    ACCOUNT_NO_SENDER,
    CLIENT_NO_RECEIVER,
    ACCOUNT_NO_RECEIVER,
    AMOUNT,
    TRANSACTION_DATE
) VALUES (
    'TR-20240912-002',
    2, -- 대박기업의 CLIENT_NO
    '20240912-002', -- 대박기업의 계좌
    1, -- 은행 재산을 나타내는 관리자(A)의 CLIENT_NO
    '20240912-001', -- 은행 계좌
    50000,
    SYSDATE
);

-- 3. 가계고객(P) '홍길동 생활비계좌' (ACCOUNT_NO: 20240912-003)에서
-- 가계고객(P) '박영희 비상금계좌' (ACCOUNT_NO: 20240912-006)로 20000원 이체
INSERT INTO TBL_TRANSACTION (
    TRANSACTION_ID,
    CLIENT_NO_SENDER,
    ACCOUNT_NO_SENDER,
    CLIENT_NO_RECEIVER,
    ACCOUNT_NO_RECEIVER,
    AMOUNT,
    TRANSACTION_DATE
) VALUES (
    'TR-20240912-003',
    3, -- 홍길동의 CLIENT_NO
    '20240912-003', -- 홍길동의 계좌
    6, -- 박영희의 CLIENT_NO
    '20240912-006', -- 박영희의 계좌
    20000,
    SYSDATE
);

-- 4. 기업고객(C) '성공기업 법인계좌' (ACCOUNT_NO: 20240912-007)에서
-- 가계고객(P) '이지은 자율적금' (ACCOUNT_NO: 20240912-010)으로 300000원 이체
INSERT INTO TBL_TRANSACTION (
    TRANSACTION_ID,
    CLIENT_NO_SENDER,
    ACCOUNT_NO_SENDER,
    CLIENT_NO_RECEIVER,
    ACCOUNT_NO_RECEIVER,
    AMOUNT,
    TRANSACTION_DATE
) VALUES (
    'TR-20240912-004',
    7, -- 성공기업의 CLIENT_NO
    '20240912-007', -- 성공기업의 계좌
    10, -- 이지은의 CLIENT_NO
    '20240912-010', -- 이지은의 계좌
    300000,
    SYSDATE
);

-- 5. 신용불량가계(DP) '최민수 마이너스통장' (ACCOUNT_NO: 20240912-008)에서
-- 신용불량기업(DC) '어려운기업 법인계좌' (ACCOUNT_NO: 20240912-009)으로 5000원 이체
INSERT INTO TBL_TRANSACTION (
    TRANSACTION_ID,
    CLIENT_NO_SENDER,
    ACCOUNT_NO_SENDER,
    CLIENT_NO_RECEIVER,
    ACCOUNT_NO_RECEIVER,
    AMOUNT,
    TRANSACTION_DATE
) VALUES (
    'TR-20240912-005',
    8, -- 최민수의 CLIENT_NO
    '20240912-008', -- 최민수의 계좌
    9, -- 어려운기업의 CLIENT_NO
    '20240912-009', -- 어려운기업의 계좌
    5000,
    SYSDATE
);

-- 데이터 삽입을 최종적으로 반영합니다.
COMMIT;


