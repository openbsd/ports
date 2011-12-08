# $OpenBSD: Makefile,v 1.16 2011/12/08 20:15:40 eric Exp $

COMMENT=	MTP, IMAP and POP protocol implementation

CATEGORIES=	mail

VERSION=	11.1.0
DISTNAME=	TwistedMail-${VERSION}
PKGNAME=	py-twisted-mail-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedMail

MASTER_SITES=	http://twistedmatrix.com/Releases/Mail/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/mail \
		devel/py-twisted/names

TRIAL_TARGET=	twisted.mail

.include <bsd.port.mk>
