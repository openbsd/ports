# $OpenBSD: Makefile,v 1.5 2019/10/06 13:34:56 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		timesheet

TRYTON_DEPENDS +=	company \
			company_work_time

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
