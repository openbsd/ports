# $OpenBSD: Makefile,v 1.4 2013/03/08 16:24:39 ajacoutot Exp $

VERSION=	2.7.20
REVISION=	1

# remove CVS ID
post-extract:
	@sed '1d' ${WRKSRC}/examples/etc/puppet/fileserver.conf > \
		${WRKSRC}/examples/etc/puppet/fileserver.conf.bak
	@mv ${WRKSRC}/examples/etc/puppet/fileserver.conf.bak \
		${WRKSRC}/examples/etc/puppet/fileserver.conf

post-install:
	${INSTALL_DATA} ${WRKSRC}/examples/etc/puppet/{fileserver,puppet,tagmail}.conf \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet

.include <bsd.port.mk>
