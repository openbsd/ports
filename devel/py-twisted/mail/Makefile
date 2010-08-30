# $OpenBSD: Makefile,v 1.11 2010/08/30 22:24:16 jasper Exp $

COMMENT=	MTP, IMAP and POP protocol implementation

CATEGORIES=	mail

VERSION=	10.0.0
DISTNAME=	TwistedMail-${VERSION}
PKGNAME=	py-twisted-mail-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedMail

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Mail/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-mail-*:devel/py-twisted/mail \
		:py-twisted-names-*:devel/py-twisted/names

TRIAL_TARGET=	twisted.mail

.include <bsd.port.mk>
