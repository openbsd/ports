# $OpenBSD: Makefile,v 1.18 2019/07/12 20:50:57 sthen Exp $

COMMENT=	client and server-side SOAP implementation

DISTNAME=	SOAP-Lite-1.20
CATEGORIES=	www

# perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*
MODCPAN_EXAMPLES=Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-IO-SessionData \
		devel/p5-Task-Weaken \
		mail/p5-MIME-tools \
		security/p5-Crypt-SSLeay \
		security/p5-IO-Socket-SSL \
		textproc/p5-XML-Parser \
		www/p5-URI \
		www/p5-libwww
TEST_DEPENDS =	textproc/p5-XML-Parser-Lite \
		devel/p5-Test-Warn

pre-patch:
	cd ${WRKSRC} && \
	    perl -pi -e '$$. == 1 && s,^#!.*env perl,#!/usr/bin/perl,;' \
	    -e 'close ARGV if eof;' bin/SOAPsh.pl bin/stubmaker.pl \
	    examples/XMLRPC/xmlrpc.cgi examples/XMLRPC/xmlrpc.daemon

.include <bsd.port.mk>
