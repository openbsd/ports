# $OpenBSD: Makefile,v 1.1 2013/03/08 16:12:47 ajacoutot Exp $

VERSION=	2.7.20

post-install:
	${INSTALL_DATA} ${WRKSRC}/examples/etc/puppet/{fileserver,puppet,tagmail}.conf \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet

.include <bsd.port.mk>
