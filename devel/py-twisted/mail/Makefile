# $OpenBSD: Makefile,v 1.5 2008/03/26 19:57:23 eric Exp $

COMMENT=	MTP, IMAP and POP protocol implementation

CATEGORIES=	mail

VERSION=	0.4.0
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
