# $OpenBSD: Makefile,v 1.2 2007/05/30 02:36:27 aanriot Exp $

COMMENT=	"front-end to an XSL toolchain"

DISTNAME=	xmlto-0.0.18
PKGNAME=	${DISTNAME}p0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	textproc

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB+= c

MASTER_SITES=	http://cyberelk.net/tim/data/xmlto/stable/

RUN_DEPENDS=	::shells/bash \
		::misc/gnugetopt \
		::textproc/libxml \
		::textproc/libxslt \
		::textproc/docbook-xsl 
BUILD_DEPENDS=	${RUN_DEPENDS}


CONFIGURE_STYLE= gnu

CONFIGURE_ARGS=	--with-bash=${LOCALBASE}/bin/bash \
		--with-getopt=${LOCALBASE}/bin/gnugetopt

.include <bsd.port.mk>

