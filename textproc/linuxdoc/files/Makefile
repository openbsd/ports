FILES=  catalog freebsd-1.0.dtd freebsd-1.1.dtd linuxdoc.dec original.dtd \
	xfree86.dtd
NOOBJ=	noobj

install:
	${INSTALL} ${INSTALL_COPY} -o ${SHAREOWN} -g ${SHAREGRP} \
	-m ${SHAREMODE} ${FILES} ${INSTDIR}

.include <bsd.subdir.mk>
