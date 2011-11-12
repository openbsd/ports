# $OpenBSD: Makefile,v 1.5 2011/11/12 13:11:09 gsoares Exp $

COMMENT=	handle GnuPG-encrypted/signed messages

DISTNAME=	Mail-GnuPG-0.16
CATEGORIES=	mail security

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	security/p5-GnuPG-Interface>=0.44 \
		mail/p5-MIME-tools>=5.428

MODULES=	cpan

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
