# $OpenBSD: Makefile,v 1.40 2006/11/03 17:55:07 bernd Exp $
# $FreeBSD: Makefile,v 1.6 1999/06/03 08:31:06 ache Exp $

COMMENT=	"text-based ICQ implementation"

DISTNAME=	micq-0.5.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

MAINTAINER=	David Krause <david@openbsd.org>
HOMEPAGE=	http://www.micq.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=	${HOMEPAGE}source/ \
		http://http.uk.micq.org/source/ \
		http://http.bg.micq.org/source/

EXTRACT_SUFX=	.tgz

MODULES=	converters/libiconv

CONFIGURE_ARGS+=--enable-ssl=openssl
CONFIGURE_ENV+=	MICQ_EXTRAVERSION="OpenBSD Ports Tree"

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
