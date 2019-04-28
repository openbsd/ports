# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:51 sthen Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		timesheet
REVISION =		0

TRYTON_DEPENDS +=	company \
			company_work_time

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
