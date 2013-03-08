# $OpenBSD: Makefile,v 1.2 2013/03/08 16:15:33 ajacoutot Exp $

VERSION=	2.7.20
REVISION=	0

post-install:
	${INSTALL_DATA} ${WRKSRC}/examples/etc/puppet/{fileserver,puppet,tagmail}.conf \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet

.include <bsd.port.mk>
