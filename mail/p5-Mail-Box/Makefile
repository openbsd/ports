# $OpenBSD: Makefile,v 1.13 2004/06/26 07:35:07 xsa Exp $

COMMENT=		"perl module to manage mail folders"

DISTNAME=		Mail-Box-2.018
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Mail/}

RUN_DEPENDS=		:p5-Time-TimeDate-*:devel/p5-Time-TimeDate	\
			:p5-MIME-tools-*:mail/p5-MIME-tools		\
			:p5-MIME-Types-*:mail/p5-MIME-Types		\
			:p5-Object-Realize-*:devel/p5-Object-Realize	\
			:p5-HTML-Format-*:www/p5-HTML-Format		\
			:p5-Text-Autoformat-*:textproc/p5-Text-Autoformat	\
			:p5-Font-AFM-*:textproc/p5-Font-AFM
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
