# $OpenBSD: Makefile,v 1.32 2004/11/23 22:33:32 david Exp $
# $FreeBSD: Makefile,v 1.6 1999/06/03 08:31:06 ache Exp $

COMMENT=	"text-based ICQ implementation"

DISTNAME=       micq-0.4.12
CATEGORIES=	net

MAINTAINER=	David Krause <david@openbsd.org>
HOMEPAGE=	http://www.micq.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}source/ \
		http://http.uk.micq.org/source/ \
		http://http.bg.micq.org/source/

EXTRACT_SUFX=	.tgz

FLAVORS=	ssl
FLAVOR?=

.if ${FLAVOR:L:Mssl}
LIB_DEPENDS=	gnutls.12::security/gnutls
CONFIGURE_ARGS+= --enable-ssl
.else
CONFIGURE_ARGS+= --disable-ssl
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
