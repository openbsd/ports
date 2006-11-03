# $OpenBSD: Makefile,v 1.1.1.1 2006/11/03 14:00:21 msf Exp $

COMMENT=	"front-end to an XSL toolchain"

DISTNAME=	xmlto-0.0.18
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

BUILD_DEPENDS=	::shells/bash \
		::misc/gnugetopt \
		::textproc/libxml \
		::textproc/libxslt \
		::textproc/docbook-xsl 
RUN_DEPENDS=	${BUILD_DEPENDS}


CONFIGURE_STYLE= gnu

CONFIGURE_ARGS=	--with-bash=${LOCALBASE}/bin/bash \
		--with-getopt=${LOCALBASE}/bin/gnugetopt

.include <bsd.port.mk>

