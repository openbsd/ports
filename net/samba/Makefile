# New ports collection makefile for:	samba
# Version required:			1.9.18
# Date created:				22 Apr 1998
# Whom:					form
#
# $OpenBSD: Makefile,v 1.14 1998/09/10 06:49:25 marc Exp $
#

DISTNAME=	samba-1.9.18p10
PKGNAME=	samba-1.9.18.10
CATEGORIES=	net
MASTER_SITES=	ftp://samba.anu.edu.au/pub/samba/

MAINTAINER=	form@vs.itam.nsc.ru

WRKSRC=		${WRKDIR}/${DISTNAME}/source
MAN1=		smbstatus.1 smbclient.1 smbrun.1 smbtar.1 testparm.1 testprns.1 make_smbcodepage.1
MAN5=		smb.conf.5
MAN7=		samba.7
MAN8=		smbd.8 nmbd.8 smbpasswd.8

SAMPLE_CONFIG=	${PREFIX}/lib/samba/smb.conf.sample
SAMBA_SPOOL=	/var/spool/samba
XSAMBA_SPOOL=	\/var\/spool\/samba
SAMBA_LOGDIR=	/var/log
XSAMBA_LOGDIR=	\/var\/log

SAMBA_DOCS=${WRKDIR}/${DISTNAME}/docs/INSTALL.sambatar \
	${WRKDIR}/${DISTNAME}/docs/THANKS \
	${WRKDIR}/${DISTNAME}/docs/history \
	${WRKDIR}/${DISTNAME}/docs/announce \
	${WRKDIR}/${DISTNAME}/docs/PROJECTS \

post-install:
	${MKDIR} ${PREFIX}/share/examples/samba
	${CP} -r ${WRKDIR}/${DISTNAME}/examples/* ${PREFIX}/share/examples/samba
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/samba/faq
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/samba
	for i in ${SAMBA_DOCS} ${WRKDIR}/${DISTNAME}/docs/*.txt		\
			${WRKDIR}/${DISTNAME}/docs/*.reg		\
			${WRKDIR}/${DISTNAME}/docs/*.htm		\
			${WRKDIR}/${DISTNAME}/*.txt			\
			${WRKDIR}/${DISTNAME}/README			\
			${WRKDIR}/${DISTNAME}/docs/README.* ; do	\
		${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba ;		\
	done
	for i in ${WRKDIR}/${DISTNAME}/docs/faq/* ; do			\
		${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba/faq ;	\
	done
.endif
	@test -d ${SAMBA_SPOOL} || ${MKDIR} ${SAMBA_SPOOL} && chmod 1777 ${SAMBA_SPOOL}
	@if [ ! -f ${SAMPLE_CONFIG} ]; then				\
		${SED} -e 's/__SAMBA_SPOOL__/${XSAMBA_SPOOL}/'		\
		    -e 's/__LOGDIR__/${XSAMBA_LOGDIR}/' 		\
			${FILESDIR}/smb.conf.default			\
			> ${SAMPLE_CONFIG} ;				\
	fi
	${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME}/source/mksmbpasswd.sh ${PREFIX}/bin
	if [ ! -d /etc/samba ] ; then				\
		${MKDIR} /etc/samba;				\
		chown root.wheel /etc/samba ;			\
	fi
	if [ ! -f /etc/samba/smbpasswd ] ; then			\
		${CAT} /etc/passwd | ${PREFIX}/bin/mksmbpasswd.sh > /etc/samba/smbpasswd ; \
		chmod 600 /etc/samba/smbpasswd ;			\
	fi
	chown root.bin ${PREFIX}/bin/smbpasswd
	chmod 111 ${PREFIX}/bin/smbpasswd
	more ${FILESDIR}/README.OpenBSD

.include <bsd.port.mk>
