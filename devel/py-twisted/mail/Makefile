# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:27 espie Exp $

COMMENT=	MTP, IMAP and POP protocol implementation

CATEGORIES=	mail

VERSION=	11.1.0
DISTNAME=	TwistedMail-${VERSION}
PKGNAME=	py-twisted-mail-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedMail

MASTER_SITES=	http://twistedmatrix.com/Releases/Mail/${VERSION:R}/

TEST_DEPENDS=devel/py-twisted/mail \
		devel/py-twisted/names

TRIAL_TARGET=	twisted.mail

.include <bsd.port.mk>
