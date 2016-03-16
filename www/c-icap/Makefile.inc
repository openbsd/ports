# $OpenBSD: Makefile.inc,v 1.4 2016/03/16 20:02:12 naddy Exp $

CATEGORIES+=	www

HOMEPAGE?=	http://c-icap.sourceforge.net/

MAINTAINER?=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES?=	${MASTER_SITE_SOURCEFORGE:=c-icap/}

CONFIGURE_STYLE?= gnu

LIBTOOL_FLAGS=	--tag=disable-static
SYSCONFDIR=	${BASESYSCONFDIR}/c-icap

post-install:
	rm ${PREFIX}/lib/c_icap/*.la
