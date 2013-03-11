# $OpenBSD: Makefile.inc,v 1.3 2013/03/11 10:50:24 espie Exp $

CATEGORIES =	devel
MAINTAINER ?=	Johan Huldtgren <jhuldtgren@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

.if defined(HOLNAME)
DISTNAME =	Date_Holidays_${HOLNAME}
RUN_DEPENDS +=	devel/pear-Date-Holidays/pear-Date-Holidays
.endif

MODULES +=		www/pear
