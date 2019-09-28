# $OpenBSD: Makefile,v 1.11 2019/09/28 12:20:17 giovanni Exp $

COMMENT=	Perl implementation of DMARC

DISTNAME=	Mail-DMARC-1.20190831
MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

CATEGORIES=	mail

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

BUILD_DEPENDS=	devel/p5-File-ShareDir-Install>=0.06

RUN_DEPENDS=	converters/p5-JSON \
		converters/p5-Net-IDN-Encode \
		databases/p5-DBD-SQLite>=1.31 \
		databases/p5-DBIx-Simple>=1.35 \
		devel/p5-Config-Tiny \
		devel/p5-File-ShareDir>=1.0 \
		devel/p5-Net-Server \
		devel/p5-Test-File-ShareDir \
		mail/p5-Email-MIME \
		mail/p5-Email-Simple \
		mail/p5-Mail-DKIM \
		net/p5-Net-DNS \
		net/p5-Net-HTTP \
		net/p5-Net-IP \
		net/p5-Net-SMTPS \
		net/p5-Socket6>=0.23 \
		security/p5-IO-Socket-SSL \
		security/p5-Net_SSLeay \
		textproc/p5-Regexp-Common>=2013031301 \
		textproc/p5-XML-LibXML \
		www/p5-CGI \
		www/p5-HTTP-Message \
		www/p5-URI \
		www/p5-libwww

TEST_DEPENDS=	${RUN_DEPENDS} \
		databases/p5-DBD-SQLite \
		devel/p5-Test-Exception \
		devel/p5-Test-File-ShareDir \
		devel/p5-Test-Output \
		textproc/p5-XML-Validator-Schema

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
