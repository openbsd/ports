# $OpenBSD: Makefile,v 1.9 2009/03/11 22:20:09 bernd Exp $

COMMENT=	MTP, IMAP and POP protocol implementation

CATEGORIES=	mail

VERSION=	8.2.0
DISTNAME=	TwistedMail-${VERSION}
PKGNAME=	py-twisted-mail-${VERSION}p0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedMail

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Mail/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-mail-*:devel/py-twisted/mail \
		:py-twisted-names-*:devel/py-twisted/names

TRIAL_TARGET=	twisted.mail

.include <bsd.port.mk>
