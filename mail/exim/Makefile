# $OpenBSD: Makefile,v 1.4 1999/03/31 22:39:43 marc Exp $
#

DISTNAME=	exim-2.12
CATEGORIES=	mail

MAINTAINER=	peter.galbavy@knowledge.com

MASTER_SITES=	ftp://ftp.cus.cam.ac.uk/pub/software/programs/exim/
DISTFILES=	exim-2.12.tar.gz exim-texinfo-2.10.tar.gz

do-configure:
	@${MKDIR} ${WRKSRC}/Local
	@${CP} ${FILESDIR}/Makefile ${WRKSRC}/Local
#	@${CP} ${FILESDIR}/eximon.conf ${WRKSRC}/Local
	@(cd ${WRKSRC}/doc ; \
	for i in ../../exim-texinfo-2.10/doc/* ; do \
		ln -sf $$i ; \
	done )

pre-install:
	${INSTALL} -d /etc/exim
	${INSTALL} -d /var/log/exim

post-install:
	@echo "EXIM is installed. You must now edit /etc/exim/configure"
	@echo "and set the correct values for your system."
	@echo
	@echo "It is strongly advised that you configure exim to use"
	@echo "a UID and GID other that 0/0. You can do this by adding"
	@echo "lines to the configure file like this:"
	@echo
	@echo "\texim_user = \"nobody\""
	@echo "\texim_group = \"nogroup\""
	@echo
	@echo "but you must remember to allow that user write"
	@echo "permissions to /var/log/exim and /var/spool/exim"

.include <bsd.port.mk>
