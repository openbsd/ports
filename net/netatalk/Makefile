# $OpenBSD: Makefile,v 1.3 1999/05/24 02:33:58 brad Exp $

DISTNAME=       netatalk-1.4b2
CATEGORIES=	net
MASTER_SITES=   ftp://terminator.rs.itd.umich.edu/unix/netatalk/

MAINTAINER=	ianm@cit.nepean.uws.edu.au	

# NOTES:
# Will compile with kerberos support in apfd and papd.
# Haven't tested kerberos support as there is no MacOS
# support for kerberos outside the US, so your on your
# own. Still need to add support for AFS. Will update
# the Port shortly. 1999/01/08. ianm@cit.nepean.uws.edu.au

pre-configure:
	@mkdir -p ${WRKSRC}/sys/openbsd
	@cp ${FILESDIR}/sys-OpenBSD-Makefile ${WRKSRC}/sys/openbsd/Makefile

# This may cause problems if you don't have source installed. I'm
# just lazy and didn't want to patch most of netatalk's makefiles, .c
# and .h files. There's heaps that need fixing Maybe I will in the future.

	@rm -rf ${WRKSRC}/include/netatalk
	@ln -s /sys/netatalk ${WRKSRC}/include/netatalk
	@rm -f ${WRKSRC}/sys/netatalk/*.h

post-install:

@if [ ! -a X"/etc/netatalk/AppleVolumes.system" ]; then		\
	@cp ${WRKSRC}/config/AppleVolumes.system /etc/netatalk; \
fi
@if [ ! -a X"/etc/netatalk/Applevolumes.default" ]; then	\
	@cp ${WRKSRC}/config/AppleVolumes.default /etc/netatalk;\
fi
	@chmod 750 /etc/netatalk

.include <bsd.port.mk>
