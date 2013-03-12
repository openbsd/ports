# $OpenBSD: Makefile,v 1.6 2013/03/12 18:52:11 robert Exp $

VERSION=	2.7.21

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
