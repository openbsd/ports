# $OpenBSD: Makefile,v 1.22 2003/01/22 07:29:40 pvalchev Exp $
# $FreeBSD: Makefile,v 1.6 1999/06/03 08:31:06 ache Exp $

COMMENT=	"text-based ICQ implementation"

DISTNAME=       micq-0.4.10
CATEGORIES=	net

MAINTAINER=	David Krause <openbsd@davidkrause.com>
HOMEPAGE=	http://www.micq.org

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/source/ \
		http://micq.alpha345.com/source/ \
		http://http.bg.micq.org/source/

EXTRACT_SUFX=	.tgz

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
