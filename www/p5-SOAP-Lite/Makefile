# $OpenBSD: Makefile,v 1.10 2010/12/17 00:00:45 jasper Exp $

COMMENT=	client and server-side SOAP implementation

DISTNAME=	SOAP-Lite-0.712
CATEGORIES=	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
MODCPAN_EXAMPLES=Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Task-Weaken \
		devel/p5-Class-Inspector \
		mail/p5-MIME-Lite \
		mail/p5-MIME-tools \
		net/p5-Net-Jabber \
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
