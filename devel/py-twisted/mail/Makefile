# $OpenBSD: Makefile,v 1.15 2011/09/16 09:24:56 espie Exp $

COMMENT=	MTP, IMAP and POP protocol implementation

CATEGORIES=	mail

VERSION=	11.0.0
DISTNAME=	TwistedMail-${VERSION}
PKGNAME=	py-twisted-mail-${VERSION}
REVISION=		0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedMail

MASTER_SITES=	http://twistedmatrix.com/Releases/Mail/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/mail \
		devel/py-twisted/names

TRIAL_TARGET=	twisted.mail

.include <bsd.port.mk>
