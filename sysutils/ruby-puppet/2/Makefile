# $OpenBSD: Makefile,v 1.10 2013/03/18 15:07:56 ajacoutot Exp $

VERSION=	2.7.21
REVISION=	3

# remove CVS ID
post-extract:
	@sed '1d' ${WRKSRC}/examples/etc/puppet/fileserver.conf > \
		${WRKSRC}/examples/etc/puppet/fileserver.conf.bak
	@mv ${WRKSRC}/examples/etc/puppet/fileserver.conf.bak \
		${WRKSRC}/examples/etc/puppet/fileserver.conf

post-install:
	${INSTALL_DATA} ${WRKSRC}/examples/etc/puppet/{fileserver,tagmail}.conf \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet

.include <bsd.port.mk>
