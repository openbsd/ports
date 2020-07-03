# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:29 sthen Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		timesheet
REVISION =		0

TRYTON_DEPENDS +=	company \
			company_work_time

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
