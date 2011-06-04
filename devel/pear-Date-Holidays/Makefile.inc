# $OpenBSD: Makefile.inc,v 1.2 2011/06/04 11:41:08 sthen Exp $

CATEGORIES =	devel
MAINTAINER ?=	Johan Huldtgren <jhuldtgren@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

.if defined(HOLNAME)
DISTNAME =	Date_Holidays_${HOLNAME}
RUN_DEPENDS +=	devel/pear-Date-Holidays/pear-Date-Holidays
.endif

MODULES +=		www/pear
