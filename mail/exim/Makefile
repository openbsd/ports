# $OpenBSD: Makefile,v 1.11 2000/04/09 17:36:54 espie Exp $
#

DISTNAME=	exim-3.13
CATEGORIES=	mail
FAKE=No

MAINTAINER=	peter.galbavy@knowledge.com

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cus.cam.ac.uk/pub/software/programs/exim/
DISTFILES=	exim-3.13.tar.gz exim-texinfo-3.10.tar.gz

do-configure:
	@mkdir -p ${WRKSRC}/Local
	@cp ${FILESDIR}/Makefile ${WRKSRC}/Local
	@cp ${FILESDIR}/eximon.conf ${WRKSRC}/Local
	@(cd ${WRKSRC}/doc ; \
	for i in ../../exim-texinfo-3.10/doc/* ; do \
		ln -sf $$i ; \
	done )

pre-install:
	${INSTALL} -d /etc/exim
#	${INSTALL} -d /var/log/exim

post-install:
	@cp ${WRKSRC}/src/configure.default /etc/exim/configure.sample
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
	@echo
	@echo "If you intend replacing sendmail with exim, then don't"
	@echo "forget to modify /etc/mailer.conf accordingly."
	@echo


.include <bsd.port.mk>
