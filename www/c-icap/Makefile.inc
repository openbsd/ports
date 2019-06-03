# $OpenBSD: Makefile.inc,v 1.5 2019/06/03 16:06:58 sthen Exp $

CATEGORIES+=	www

HOMEPAGE?=	http://c-icap.sourceforge.net/

MAINTAINER?=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE?= Yes

MASTER_SITES?=	${MASTER_SITE_SOURCEFORGE:=c-icap/}

CONFIGURE_STYLE?= gnu

LIBTOOL_FLAGS=	--tag=disable-static
SYSCONFDIR=	${BASESYSCONFDIR}/c-icap

post-install:
	rm ${PREFIX}/lib/c_icap/*.la
