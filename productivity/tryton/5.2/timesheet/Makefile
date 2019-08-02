# $OpenBSD: Makefile,v 1.2 2019/08/02 11:18:44 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		timesheet

TRYTON_DEPENDS +=	company \
			company_work_time

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
