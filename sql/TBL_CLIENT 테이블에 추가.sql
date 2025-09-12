-- TBL_CLIENT 테이블에 데이터 삽입

-- 1. 관리자 계정 추가
-- CLIENT_NO는 시퀀스를 사용하여 자동 증가시킵니다.
INSERT INTO TBL_CLIENT (
    CLIENT_NO,
    CLIENT_ID,
    CLIENT_PASSWORD,
    CLIENT_NAME,
    CLIENT_STATUS,
    CLIENT_EMAIL,
    CLIENT_PHONE_NUMBER,
    CLIENT_ADDR,
    JOIN_DATE
) VALUES (
    TBL_CLIENT_SEQ.NEXTVAL,
    'admin',
    'admin1234',
    '관리자',
    'A',
    'admin@email.com',
    '010-1234-5678',
    '서울시 강남구',
    SYSDATE
);

-- 2. 기업고객 계정 추가
INSERT INTO TBL_CLIENT (
    CLIENT_NO,
    CLIENT_ID,
    CLIENT_PASSWORD,
    CLIENT_NAME,
    CLIENT_STATUS,
    CLIENT_EMAIL,
    CLIENT_PHONE_NUMBER,
    CLIENT_ADDR,
    JOIN_DATE
) VALUES (
    TBL_CLIENT_SEQ.NEXTVAL,
    'company01',
    'comp01_pw',
    '대박기업',
    'C',
    'company01@email.com',
    '02-111-2222',
    '경기도 성남시',
    SYSDATE
);

-- 3. 가계고객 계정 추가
INSERT INTO TBL_CLIENT (
    CLIENT_NO,
    CLIENT_ID,
    CLIENT_PASSWORD,
    CLIENT_NAME,
    CLIENT_STATUS,
    CLIENT_EMAIL,
    CLIENT_PHONE_NUMBER,
    CLIENT_ADDR,
    JOIN_DATE
) VALUES (
    TBL_CLIENT_SEQ.NEXTVAL,
    'user01',
    'user01_pw',
    '홍길동',
    'P',
    'hong@email.com',
    '010-1111-2222',
    '서울시 서초구',
    SYSDATE
);

-- 4. 신용불량기업 계정 추가
INSERT INTO TBL_CLIENT (
    CLIENT_NO,
    CLIENT_ID,
    CLIENT_PASSWORD,
    CLIENT_NAME,
    CLIENT_STATUS,
    CLIENT_EMAIL,
    CLIENT_PHONE_NUMBER,
    CLIENT_ADDR,
    JOIN_DATE
) VALUES (
    TBL_CLIENT_SEQ.NEXTVAL,
    'badcomp',
    'badcomp_pw',
    '부실기업',
    'DC',
    'badcomp@email.com',
    '02-333-4444',
    '경기도 부천시',
    SYSDATE
);

-- 5. 신용불량가계 계정 추가
INSERT INTO TBL_CLIENT (
    CLIENT_NO,
    CLIENT_ID,
    CLIENT_PASSWORD,
    CLIENT_NAME,
    CLIENT_STATUS,
    CLIENT_EMAIL,
    CLIENT_PHONE_NUMBER,
    CLIENT_ADDR,
    JOIN_DATE
) VALUES (
    TBL_CLIENT_SEQ.NEXTVAL,
    'baduser',
    'baduser_pw',
    '김철수',
    'DP',
    'baduser@email.com',
    '010-5555-6666',
    '인천시 연수구',
    SYSDATE
);

-- 1. 가계고객 계정 추가 (두 번째)
INSERT INTO TBL_CLIENT (
    CLIENT_NO,
    CLIENT_ID,
    CLIENT_PASSWORD,
    CLIENT_NAME,
    CLIENT_STATUS,
    CLIENT_EMAIL,
    CLIENT_PHONE_NUMBER,
    CLIENT_ADDR,
    JOIN_DATE
) VALUES (
    TBL_CLIENT_SEQ.NEXTVAL,
    'user03',
    'user03_pw',
    '박영희',
    'P',
    'park@email.com',
    '010-7777-8888',
    '부산시 해운대구',
    SYSDATE
);

-- 2. 기업고객 계정 추가 (두 번째)
INSERT INTO TBL_CLIENT (
    CLIENT_NO,
    CLIENT_ID,
    CLIENT_PASSWORD,
    CLIENT_NAME,
    CLIENT_STATUS,
    CLIENT_EMAIL,
    CLIENT_PHONE_NUMBER,
    CLIENT_ADDR,
    JOIN_DATE
) VALUES (
    TBL_CLIENT_SEQ.NEXTVAL,
    'company02',
    'comp02_pw',
    '성공기업',
    'C',
    'company02@email.com',
    '051-999-0000',
    '부산시 중구',
    SYSDATE
);

-- 3. 신용불량가계 계정 추가 (두 번째)
INSERT INTO TBL_CLIENT (
    CLIENT_NO,
    CLIENT_ID,
    CLIENT_PASSWORD,
    CLIENT_NAME,
    CLIENT_STATUS,
    CLIENT_EMAIL,
    CLIENT_PHONE_NUMBER,
    CLIENT_ADDR,
    JOIN_DATE
) VALUES (
    TBL_CLIENT_SEQ.NEXTVAL,
    'baduser02',
    'baduser02_pw',
    '최민수',
    'DP',
    'choi@email.com',
    '010-2222-3333',
    '대구시 수성구',
    SYSDATE
);

-- 4. 신용불량기업 계정 추가 (두 번째)
INSERT INTO TBL_CLIENT (
    CLIENT_NO,
    CLIENT_ID,
    CLIENT_PASSWORD,
    CLIENT_NAME,
    CLIENT_STATUS,
    CLIENT_EMAIL,
    CLIENT_PHONE_NUMBER,
    CLIENT_ADDR,
    JOIN_DATE
) VALUES (
    TBL_CLIENT_SEQ.NEXTVAL,
    'badcomp02',
    'badcomp02_pw',
    '어려운기업',
    'DC',
    'badcomp02@email.com',
    '053-123-4567',
    '대구시 동구',
    SYSDATE
);

-- 5. 가계고객 계정 추가 (세 번째)
INSERT INTO TBL_CLIENT (
    CLIENT_NO,
    CLIENT_ID,
    CLIENT_PASSWORD,
    CLIENT_NAME,
    CLIENT_STATUS,
    CLIENT_EMAIL,
    CLIENT_PHONE_NUMBER,
    CLIENT_ADDR,
    JOIN_DATE
) VALUES (
    TBL_CLIENT_SEQ.NEXTVAL,
    'user04',
    'user04_pw',
    '이지은',
    'P',
    'jieun@email.com',
    '010-5555-7777',
    '광주시 서구',
    SYSDATE
);

-- 데이터 삽입을 최종적으로 반영합니다.
COMMIT;
