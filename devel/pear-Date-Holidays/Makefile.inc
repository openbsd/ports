# $OpenBSD: Makefile.inc,v 1.5 2019/07/12 20:45:16 sthen Exp $

CATEGORIES =	devel

# BSD
PERMIT_PACKAGE =	Yes

.if defined(HOLNAME)
DISTNAME =	Date_Holidays_${HOLNAME}
RUN_DEPENDS +=	devel/pear-Date-Holidays/pear-Date-Holidays
.endif

MODULES +=		www/pear
