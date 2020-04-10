# $OpenBSD: Makefile,v 1.5 2020/04/10 15:22:50 semarie Exp $

MODPY_EGG_VERSION =	5.2.4
TRYTON_MODULE =		timesheet

TRYTON_DEPENDS +=	company \
			company_work_time

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
