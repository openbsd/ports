# $OpenBSD: Makefile,v 1.14 2014/03/28 12:18:07 sthen Exp $

COMMENT=	client and server-side SOAP implementation

DISTNAME=	SOAP-Lite-1.11
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
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

pre-patch:
	cd ${WRKSRC} && \
	    perl -pi -e '$$. == 1 && s,^#!.*env perl,#!/usr/bin/perl,;' \
	    -e 'close ARGV if eof;' bin/SOAPsh.pl bin/stubmaker.pl \
	    examples/XMLRPC/xmlrpc.cgi examples/XMLRPC/xmlrpc.daemon

.include <bsd.port.mk>
