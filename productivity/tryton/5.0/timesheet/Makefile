# $OpenBSD: Makefile,v 1.9 2021/11/02 00:02:00 sthen Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		timesheet
REVISION =		1

TRYTON_DEPENDS +=	company \
			company_work_time

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
