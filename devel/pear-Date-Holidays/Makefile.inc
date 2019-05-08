# $OpenBSD: Makefile.inc,v 1.4 2019/05/08 14:24:40 sthen Exp $

CATEGORIES =	devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

.if defined(HOLNAME)
DISTNAME =	Date_Holidays_${HOLNAME}
RUN_DEPENDS +=	devel/pear-Date-Holidays/pear-Date-Holidays
.endif

MODULES +=		www/pear
