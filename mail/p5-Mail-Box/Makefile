# $OpenBSD: Makefile,v 1.14 2006/11/28 11:09:52 espie Exp $

COMMENT=		"perl module to manage mail folders"

DISTNAME=		Mail-Box-2.018
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		mail

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		:p5-Time-TimeDate-*:devel/p5-Time-TimeDate	\
			:p5-MIME-tools-*:mail/p5-MIME-tools		\
			:p5-MIME-Types-*:mail/p5-MIME-Types		\
			:p5-Object-Realize-*:devel/p5-Object-Realize	\
			:p5-HTML-Format-*:www/p5-HTML-Format		\
			:p5-Text-Autoformat-*:textproc/p5-Text-Autoformat	\
			:p5-Font-AFM-*:textproc/p5-Font-AFM
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
