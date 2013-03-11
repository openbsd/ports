# $OpenBSD: Makefile,v 1.21 2013/03/11 11:23:52 espie Exp $

COMMENT=		perl module to manage mail folders

DISTNAME=		Mail-Box-2.106
CATEGORIES=		mail

# cpan
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CPAN_AUTHOR=		MARKOV
MODCPAN_EXAMPLES=	Yes

MAKE_ENV+=		TEST_POD=Yes

RUN_DEPENDS=		devel/p5-Object-Realize		\
			devel/p5-Time-TimeDate		\
			mail/p5-MIME-Types		\
			mail/p5-MIME-tools		\
			mail/p5-Mail-IMAPClient 	\
			misc/p5-User-Identity		\
			textproc/p5-Font-AFM		\
			textproc/p5-Text-Autoformat	\
			www/p5-HTML-Format
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
