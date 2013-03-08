# $OpenBSD: Makefile,v 1.3 2013/03/08 16:19:15 ajacoutot Exp $

VERSION=	2.7.20
REVISION=	1

post-install:
	${INSTALL_DATA} ${WRKSRC}/examples/etc/puppet/{fileserver,puppet,tagmail}.conf \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet

.include <bsd.port.mk>
