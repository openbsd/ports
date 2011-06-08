# $OpenBSD: Makefile,v 1.13 2011/06/08 17:39:26 jasper Exp $

COMMENT=	MTP, IMAP and POP protocol implementation

CATEGORIES=	mail

VERSION=	10.0.0
DISTNAME=	TwistedMail-${VERSION}
PKGNAME=	py-twisted-mail-${VERSION}
REVISION =	1

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedMail

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Mail/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/mail \
		devel/py-twisted/names

TRIAL_TARGET=	twisted.mail

.include <bsd.port.mk>
