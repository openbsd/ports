# $OpenBSD: Makefile,v 1.34 2011/05/07 14:03:47 sthen Exp $

COMMENT=	framework to test programs

DISTNAME=	dejagnu-1.5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=dejagnu/}

HOMEPAGE=	http://www.gnu.org/software/dejagnu/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	lang/expect,no_tk
RUN_DEPENDS=	lang/expect,no_tk

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
