# $OpenBSD: Makefile,v 1.4 2019/08/02 11:15:58 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		timesheet

TRYTON_DEPENDS +=	company \
			company_work_time

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
