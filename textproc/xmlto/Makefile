# $OpenBSD: Makefile,v 1.4 2007/10/23 21:16:20 ajacoutot Exp $

COMMENT=	front-end to an XSL toolchain

DISTNAME=	xmlto-0.0.18
PKGNAME=	${DISTNAME}p1
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
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::textproc/docbook

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS=	--with-bash=${LOCALBASE}/bin/bash \
		--with-getopt=${LOCALBASE}/bin/gnugetopt

pre-configure:
	@perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,g' \
		${WRKSRC}/xmlif/test/run-test

.include <bsd.port.mk>
