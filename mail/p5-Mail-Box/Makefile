# $OpenBSD: Makefile,v 1.18 2010/11/19 07:23:08 espie Exp $

COMMENT=		perl module to manage mail folders

DISTNAME=		Mail-Box-2.018
REVISION=		0
CATEGORIES=		mail

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Time-TimeDate	\
			mail/p5-MIME-tools		\
			mail/p5-MIME-Types		\
			devel/p5-Object-Realize	\
			www/p5-HTML-Format		\
			textproc/p5-Text-Autoformat	\
			textproc/p5-Font-AFM
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
