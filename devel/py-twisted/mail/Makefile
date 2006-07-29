# $OpenBSD

COMMENT=	"MTP, IMAP and POP protocol implementation"

CATEGORIES=	mail

DISTNAME=	TwistedMail-0.3.0
PKGNAME=	py-twisted-mail-0.3.0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedMail

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Mail/0.3/

REGRESS_DEPENDS=:py-twisted-mail-*:devel/py-twisted/mail

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.mail

.include <bsd.port.mk>
