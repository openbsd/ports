# $OpenBSD: Makefile,v 1.3 2014/07/12 19:19:18 espie Exp $

COMMENT=	perl implementation of DMARC

DISTNAME=	Mail-DMARC-1.20140622
CATEGORIES=	mail
REVISION=	1

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
CPAN_AUTHOR=	MSIMERSON

BUILD_DEPENDS=	devel/p5-File-ShareDir-Install
RUN_DEPENDS=	devel/p5-Config-Tiny \
		mail/p5-Email-MIME \
		mail/p5-Email-Simple \
		devel/p5-File-ShareDir \
		www/p5-libwww \
		converters/p5-JSON \
		net/p5-Net-DNS \
		net/p5-Net-IP \
		net/p5-Net-SMTPS \
		databases/p5-DBIx-Simple \
		textproc/p5-Regexp-Common \
		net/p5-Socket6 \
		www/p5-URI \
		textproc/p5-XML-LibXML \
		devel/p5-Net-Server
TEST_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
