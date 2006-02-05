# $OpenBSD: Makefile,v 1.8 2006/02/05 10:50:44 steven Exp $

COMMENT=		"high level firewall language"

DISTNAME=		hlfl-0.52
CATEGORIES=    		security lang

HOMEPAGE=		http://www.hlfl.org/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.hlfl.org/hlfl/ \
			ftp://ftp.hlfl.org/pub/hlfl/ \
			ftp://ftp.hlfl.org/pub/hlfl/old/

CONFIGURE_STYLE=	gnu 
FAKE_FLAGS=		prefix=${WRKINST}${PREFIX} \
			datadir=${WRKINST}${PREFIX}/share/examples

NO_REGRESS=		Yes

post-extract:
	@perl -pi -e 's#\$${prefix}\/share\/hlfl\/services\.hlfl#${SYSCONFDIR}/services.hlfl#' ${WRKSRC}/doc/hlfl.1
	@perl -pi -e 's#\$${prefix}\/share#${PREFIX}/share/examples#' ${WRKSRC}/doc/hlfl.1

post-install:
	@strip ${PREFIX}/bin/hlfl

.include <bsd.port.mk>
