# $OpenBSD: Makefile,v 1.4 1999/05/25 03:00:45 brad Exp $

DISTNAME=       netatalk-1.4b2
CATEGORIES=	net
MASTER_SITES=   ftp://terminator.rs.itd.umich.edu/unix/netatalk/

MAINTAINER=	ianm@cit.nepean.uws.edu.au	

# NOTES:
# Will compile with kerberos support in apfd and papd.
# Haven't tested kerberos support as there is no MacOS
# support for kerberos outside the US, so your on your
# own. Still need to add support for AFS. Will update
# the Port shortly.

pre-configure:
	@mkdir -p ${WRKSRC}/sys/openbsd
	@cp ${FILESDIR}/sys-OpenBSD-Makefile ${WRKSRC}/sys/openbsd/Makefile

post-install:
@if [ ! -a X"/etc/netatalk/AppleVolumes.system" ]; then		\
	@cp ${WRKSRC}/config/AppleVolumes.system /etc/netatalk; \
fi
@if [ ! -a X"/etc/netatalk/Applevolumes.default" ]; then	\
	@cp ${WRKSRC}/config/AppleVolumes.default /etc/netatalk;\
fi
	@chmod 750 /etc/netatalk

.include <bsd.port.mk>
