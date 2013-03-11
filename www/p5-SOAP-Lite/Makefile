# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:46 espie Exp $

COMMENT=	client and server-side SOAP implementation

DISTNAME=	SOAP-Lite-0.713
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
MODCPAN_EXAMPLES=Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Task-Weaken \
		devel/p5-Class-Inspector \
		mail/p5-MIME-Lite \
		mail/p5-MIME-tools \
		security/p5-Crypt-SSLeay \
		security/p5-IO-Socket-SSL \
		textproc/p5-XML-Parser \
		www/mod_perl \
		www/p5-URI \
		www/p5-libwww

CONFIGURE_ARGS+=	--noprompt \
			--HTTP-Client \
			--HTTPS-Client \
			--MAILTO-Client \
			--FTP-Client \
			--HTTP-Daemon \
			--HTTP-Apache \
			--noHTTP-FCGI \
			--POP3-Server \
			--IO-Server \
			--noMQ \
			--noJABBER \
			--MIMEParser \
			--TCP \
			--HTTP

.include <bsd.port.mk>
