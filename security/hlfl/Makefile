# $OpenBSD: Makefile,v 1.1.1.1 2001/07/05 20:10:38 jsyn Exp $

COMMENT=		"high level firewall language"

DISTNAME=		hlfl-0.52
CATEGORIES=    		security lang
NEED_VERSION=		1.417

HOMEPAGE=		http://www.hlfl.org/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.hlfl.org/hlfl/ \
			ftp://ftp.hlfl.org/pub/hlfl/

CONFIGURE_STYLE=	gnu 
CONFIGURE_ENV=		CXX=${CXX} CFLAGS="${CFLAGS}"
FAKE_FLAGS=		prefix=${WRKINST}${PREFIX} datadir=${WRKINST}${PREFIX}/share/examples

post-extract:
	@perl -pi -e 's#\$${prefix}\/share\/hlfl\/services\.hlfl#${SYSCONFDIR}/services.hlfl#' ${WRKSRC}/doc/hlfl.1
	@perl -pi -e 's#\$${prefix}\/share#${PREFIX}/share/examples#' ${WRKSRC}/doc/hlfl.1

post-install:
	@strip ${PREFIX}/bin/hlfl

.include <bsd.port.mk>
