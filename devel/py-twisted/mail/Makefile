# $OpenBSD: Makefile,v 1.7 2008/06/12 06:46:40 eric Exp $

COMMENT=	MTP, IMAP and POP protocol implementation

CATEGORIES=	mail

VERSION=	8.1.0
DISTNAME=	TwistedMail-${VERSION}
PKGNAME=	py-twisted-mail-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedMail

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Mail/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-mail-*:devel/py-twisted/mail \
		:py-twisted-names-*:devel/py-twisted/names

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.mail

.include <bsd.port.mk>
