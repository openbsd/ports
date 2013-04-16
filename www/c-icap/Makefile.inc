# $OpenBSD: Makefile.inc,v 1.1.1.1 2013/04/16 09:59:35 sthen Exp $

SHARED_ONLY?=	Yes

CATEGORIES+=	www

HOMEPAGE?=	http://c-icap.sourceforge.net/

MAINTAINER?=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?= Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES?=	${MASTER_SITE_SOURCEFORGE:=c-icap/}

CONFIGURE_STYLE?= gnu

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
SYSCONFDIR=	${BASESYSCONFDIR}/c-icap

post-install:
	rm ${PREFIX}/lib/c_icap/*.la
