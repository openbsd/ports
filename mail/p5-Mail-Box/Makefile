# $OpenBSD: Makefile,v 1.25 2020/07/03 21:45:26 sthen Exp $

COMMENT=		perl module to manage mail folders

DISTNAME =		Mail-Box-2.118
CATEGORIES=		mail
REVISION =		0

# cpan
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
CPAN_AUTHOR=		MARKOV
MODCPAN_EXAMPLES=	Yes

MAKE_ENV+=		TEST_POD=Yes

RUN_DEPENDS=		devel/p5-Object-Realize		\
			devel/p5-Time-TimeDate		\
			devel/p5-File-Remove		\
			mail/p5-MIME-Types		\
			mail/p5-MIME-tools		\
			mail/p5-Mail-IMAPClient 	\
			misc/p5-User-Identity		\
			textproc/p5-Font-AFM		\
			textproc/p5-Text-Autoformat	\
			www/p5-HTML-Format
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
